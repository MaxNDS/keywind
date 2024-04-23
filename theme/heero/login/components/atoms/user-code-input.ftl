<#macro kw>
    <div x-data="userCodeData" class="w-full">
        <div 
            class="flex flex-row justify-between items-center"
            x-trap="trapFocus"
            @keydown="onKeydown(event)"
            @keyup="onKeyup(event, $focus)" 
            @inputchanged="update($event.detail.index, substituteCharAt(userCode, $event.detail.index, $event.detail.value));"
            >
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary" 
                id="user_code_digit_1" type="text" size="1" maxlength="1" autofocus 
                @change="$dispatch('inputchanged', { index: 0, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_2" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 1, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_3" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 2, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_4" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 3, value: $el.value.toUpperCase() })" 
            />
            <div class="shrink"> &mdash; </div>
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_5" type="text" size="1" maxlength="1" 
                @change="$dispatch('inputchanged', { index: 5, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_6" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 6, value: $el.value.toUpperCase() })"  
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_7" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 7, value: $el.value.toUpperCase() })" 
            />
            <input 
                class="px-0.5 sm:px-1 py-1 shrink border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
                id="user_code_digit_8" type="text" size="1" maxlength="1"
                @change="$dispatch('inputchanged', { index: 8, value: $el.value.toUpperCase() })" 
            />
            <input type="hidden" id="device-user-code" name="device_user_code" x-model="userCode" />
        </div>
    </div>
</#macro>