package main

import (
	"fmt"
	"os"
	"os/signal"
	"regexp"
	"strings"
	"syscall"

	"github.com/go-vgo/robotgo"
	"golang.design/x/clipboard"
	"golang.design/x/hotkey"
)

func main() {
	fmt.Println("Программа запущена. Используйте:")
	fmt.Println("Ctrl+Alt+V - вставить текст без переносов")
	fmt.Println("Ctrl+Q - выход")

	// Канал для обработки сигналов завершения
	sigChan := make(chan os.Signal, 1)
	signal.Notify(sigChan, os.Interrupt, syscall.SIGTERM)

	// Регистрируем горячую клавишу Ctrl+Alt+V
	hk := hotkey.New([]hotkey.Modifier{hotkey.ModCtrl, hotkey.ModAlt}, hotkey.KeyV)
	if err := hk.Register(); err != nil {
		fmt.Println("Ошибка регистрации горячей клавиши:", err)
		return
	}
	defer hk.Unregister()

	// Канал для выхода
	exitChan := make(chan struct{})

	// Горутина для обработки горячих клавиш
	go func() {
		for {
			select {
			case <-hk.Keydown():
				processClipboard()
			case <-exitChan:
				return
			}
		}
	}()

	// Ожидаем сигнал завершения
	select {
	case <-sigChan:
	case <-waitForExitKey():
	}

	fmt.Println("Завершение работы...")
	close(exitChan)
}

func waitForExitKey() chan struct{} {
	done := make(chan struct{})
	hkExit := hotkey.New([]hotkey.Modifier{hotkey.ModCtrl}, hotkey.KeyQ)

	go func() {
		if err := hkExit.Register(); err != nil {
			fmt.Println("Ошибка регистрации клавиши выхода:", err)
			return
		}
		defer hkExit.Unregister()

		<-hkExit.Keydown()
		close(done)
	}()

	return done
}

func processClipboard() {
	// Читаем буфер обмена
	text := clipboard.Read(clipboard.FmtText)

	// Очищаем текст
	cleaned := cleanText(string(text))

	// Записываем обратно
	if err := clipboard.Write(clipboard.FmtText, []byte(cleaned)); err != nil {
		fmt.Println("Ошибка записи в буфер:", err)
		return
	}

	// Имитируем вставку
	robotgo.KeyTap("v", "ctrl")
	fmt.Println("Текст обработан и готов для вставки")
}

func cleanText(text string) string {
	// Заменяем переносы строк на пробелы
	text = strings.ReplaceAll(text, "\r\n", " ")
	text = strings.ReplaceAll(text, "\n", " ")
	text = strings.ReplaceAll(text, "\r", " ")

	// Удаляем лишние пробелы
	space := regexp.MustCompile(`\s+`)
	text = space.ReplaceAllString(text, " ")

	// Обрезаем пробелы по краям
	return strings.TrimSpace(text)
}
