export default () => ({
    userCode: '0123-5678',
    trapFocus: false,
    currentIndex: 0,
    inputLocked: false,
    lastKey: null,
    checkKey: (key) => key !== 'Backspace' && key !== 'Tab',
    substituteCharAt: (str, index, replacement) => str.substring(0, index) + replacement + str.substring(index + replacement.length),
    update(index, value) {
        this.currentIndex = index;
        this.userCode = value;
    },
    onKeydown(event) {
        if (this.inputLocked) return;
        this.inputLocked = true;
        this.lastKey = event.key;
    },
    onKeyup(event, focus) {
        if (this.lastKey !== event.key) return;
        this.inputLocked = false;
        this.lastKey = null;
        focus.next();
    }
});