class ArmorShieldsController < InheritedResources::Base

  private

    def armor_shield_params
      params.require(:armor_shield).permit(:name, :base_ac, :ac_modifier, :cap_ac_modifier, :strength, :stealth_disadvantage, :weight, :cost_cp, :don_unit, :don_amount, :doff_unit, :doff_amount, :category)
    end

end
