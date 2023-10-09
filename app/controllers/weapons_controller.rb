class WeaponsController < InheritedResources::Base

  private

    def weapon_params
      params.require(:weapon).permit(:name, :cost_cp, :weight, :damage_dice, :damage_type_id)
    end

end
