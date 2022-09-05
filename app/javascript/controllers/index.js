// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import SpecialityController from "./speciality_controller"
application.register("speciality", SpecialityController)

import TypedJsController from "./typed_js_controller"
application.register("typed-js", TypedJsController)

import NavbarController from "./navbar_controller.js"
application.register("navbar", NavbarController)
