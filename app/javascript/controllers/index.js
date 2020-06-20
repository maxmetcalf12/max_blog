/*
 * This is the default setup for StimulusJS
 * It automatically includes all files in the controllers directory
 * Be sure to add stimulus using yarn add stimulus
 */

import {
  Application
} from "stimulus"
import {
  definitionsFromContext
} from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context(".", true, /\.js$/)
application.load(definitionsFromContext(context))
