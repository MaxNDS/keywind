export default () => ({
    userCode: '0123-5678',
    trapFocus: true,
    currentIndex: 0,
    checkKey: (key) => key !== 'Backspace' && key !== 'Tab',
    substituteCharAt: (str, index, replacement) => str.substring(0, index) + replacement + str.substring(index + replacement.length),
    update(value) {
        this.userCode = value;
        console.log(value);
    }
});