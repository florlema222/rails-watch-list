// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Bootstrap import
import "bootstrap";

// Stimulus import
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"


// Stimulus
const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))

function test() {
  const a = "3";
  const b = "8"

  const c = a;
  a = b;
  b = c;

  alert("a is " + a);
  alert("b is " + b);
}
