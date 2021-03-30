Citizen.CreateThread(
    function()
        -- Request the Scaleform by its name first.
        local minimap = RequestScaleformMovie('minimap')

        -- This part below resets the minimap, and preventing the Scaleform from hiding the minimap interior.
        SetBigmapActive(true, false)
        Wait(0)
        SetBigmapActive(false, false)

        while true do
            Wait(0)
            -- Removes the Distance to Waypoint.
            BeginScaleformMovieMethod(minimap, 'HIDE_SATNAV') -- scaleform, method string
            EndScaleformMovieMethod() -- don't know if this is necessary when calling a single scaleform but might be needed if multiple scalforms are used in a single loop? Either way, removing this native doesn't affect the result from the first native, i. e. the distance to waypoint or SATNAV gets removed.

            -- Another Example for Removing the Health and Armour Bars under the minimap.
            -- BeginScaleformMovieMethod(minimap, 'SETUP_HEALTH_ARMOUR')
            -- ScaleformMovieMethodAddParamInt(3)
            -- EndScaleformMovieMethod()
        end
    end
)
