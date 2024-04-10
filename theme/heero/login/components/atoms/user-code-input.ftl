<#macro kw>
    <div x-data="userCodeData">
        <div 
            class="flex flex-row justify-between items-center"
            x-trap="trapFocus" 
            @inputchanged="currentIndex = $event.detail.index; update(substituteCharAt(userCode, $event.detail.index, $event.detail.value));"
            @keyup="if (checkKey(event.key)) { $focus.next(); }"
            >
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary" 
                id="user_code_digit_1" type="text" size="1" maxlength="1" autofocus 
                @change="$dispatch('inputchanged', { index: 0, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_2" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 1, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_3" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 2, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_4" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 3, value: $el.value.toUpperCase() })" 
            />
            <div class="px-2">&mdash;</div>
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_5" type="text" size="1" maxlength="1" 
                @change="$dispatch('inputchanged', { index: 5, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_6" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 6, value: $el.value.toUpperCase() })"  
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_7" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 7, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="p-1 border-secondary-200 rounded-sm uppercase text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_8" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 8, value: $el.value.toUpperCase() })" 
            />
            <input type="hidden" id="user_device_code" name="user_device_code" x-model="userCode" />
        </div>
    </div>
</#macro>