package config

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"

	"github.com/bharatayasa/hapus/entities"
)

var Database *gorm.DB
var DATABASE_URI string = "root:@tcp(localhost:3306)/gorm?charset=utf8mb4&parseTime=True&loc=Local"

func Connect() error {
	var err error

	Database, err = gorm.Open(mysql.Open(DATABASE_URI), &gorm.Config{})
	if err != nil {
		return err
	}

	Database.AutoMigrate(&entities.Dog{})

	return nil
}
