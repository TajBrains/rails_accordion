import 'mapkick/bundle'
import AccordionController from './controllers/accordion_controller'
import { Application } from '@hotwired/stimulus'

const application = Application.start()

window.Stimulus = application

application.register('accordion', AccordionController)

export { application }
