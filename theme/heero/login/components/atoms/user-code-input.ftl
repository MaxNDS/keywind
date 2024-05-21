<#macro kw>
    <div x-data="userCodeData" class="w-full flex flex-row justify-evenly items-center">
        <input 
            class="px-0.5 sm:px-1 py-1 w-1/3 border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary" 
            x-ref="userCodeInput0" type="text" maxlength="4" autofocus 
            @input="onInput($event, 0)" 
        />
        
        <div class="shrink"> &mdash; </div>

        <input 
            class="px-0.5 sm:px-1 py-1 w-1/3 border-secondary-200 rounded-sm uppercase text-sm sm:text-md md:text-lg text-center focus:border-primary focus:ring-primary"
            x-ref="userCodeInput1" type="text" maxlength="4" 
            @input="onInput($event, 1)" 
        />
        
        <input type="hidden" id="device-user-code" name="device_user_code" x-model="userCode" />
    </div>
</#macro>