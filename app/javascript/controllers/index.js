// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import FiltersController from "./filters_controller"
application.register("filters", FiltersController)

import FormController from "./form_controller"
application.register("form", FormController)

import SubmittableController from "./submittable_controller"
application.register("submittable", SubmittableController)
