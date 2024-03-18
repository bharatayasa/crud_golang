package main

import (
	"github.com/bharatayasa/hapus/config"
	"github.com/bharatayasa/hapus/handlers"
	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()
	if err := config.Connect(); err != nil {
		panic(err)
	}

	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("server up and running")
	})

	app.Get("/dogs", handlers.GetDogs)
	app.Get("/dogs/:id", handlers.GetDog)
	app.Post("/dogs", handlers.AddDog)
	app.Put("/dogs/:id", handlers.UpdateDog)
	app.Delete("/dogs/:id", handlers.RemoveDog)

	if err := app.Listen(":3000"); err != nil {
		panic(err)
	}
}
