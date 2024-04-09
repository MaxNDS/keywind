<#macro kw>
    <!-- example user code: POAI-IQCO -->
    <script>
        function checkKey(key) {
            return key !== 'Backspace' && key !== 'Tab';
        }
    </script>
    <div 
        class="flex flex-row justify-between items-center"
        x-data="{ userCode: '0123-5678', trapFocus: true }"
        x-trap="trapFocus" 
        @first="$focus.first()"
        @next="$focus.next()">
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary" 
            id="user_code_digit_1" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')"
            @change="userCode = userCode.replaceAt(0, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_2" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')" 
            @change="userCode = userCode.replaceAt(1, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_3" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')" 
            @change="userCode = userCode.replaceAt(2, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_4" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')" 
            @change="userCode = userCode.replaceAt(3, $el.value.toUpperCase())" 
        />
        <div class="px-2">&mdash;</div>
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_5" type="text" size="1" maxlength="1" 
            @keyup="checkKey(event.key) && $dispatch('next')"
            @change="userCode = userCode.replaceAt(5, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_6" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')" 
            @change="userCode = userCode.replaceAt(6, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_7" type="text" size="1" maxlength="1"
            @keyup="checkKey(event.key) && $dispatch('next')" 
            @change="userCode = userCode.replaceAt(7, $el.value.toUpperCase())" 
        />
        <input 
            class="p-1 border-secondary-200 rounded-sm uppercase text-base text-center focus:border-primary focus:ring-primary"
            id="user_code_digit_8" type="text" size="1" maxlength="1"
            @keyup="if (checkKey(event.key)) trapFocus = false" 
            @change="userCode = userCode.replaceAt(8, $el.value.toUpperCase())" 
        />
        <input type="hidden" id="user_device_code" name="user_device_code" x-model="userCode" />
    </div>
</#macro>