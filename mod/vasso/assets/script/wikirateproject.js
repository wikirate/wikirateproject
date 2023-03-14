/**
 * Trigger modal_link under elementRef
 * @param elementRef element that contains modal
 */
function trigger_modal(elementRef) {
    elementRef.getElementsByTagName("a")[0].click()
}