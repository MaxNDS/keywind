export default () => ({
    userCode: '0123-5678',
    userCodeCache: [],
    trapFocus: false,
    currentIndex: 0,
    onInput: function(e, index) {
        const val = e.target.value;
        if (e.data === null) {
            // backspace was pressed
            if (this.currentIndex === 1 && val.length === 0) {
                this.currentIndex = 0;
                this.$refs.userCodeInput0.focus();
            }
            return;
        }
        
        if (val.length === 4) {
            this.userCodeCache[index] = val.toUpperCase();
            if (index === 0) {
                this.currentIndex = 1;
                this.$refs.userCodeInput1.focus();
            }else {
                this.userCode = this.userCodeCache.join('-');
            }
        }
    },
});