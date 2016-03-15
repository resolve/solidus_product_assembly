Spree::Stock::InventoryValidator.class_eval do
  def validate(line_item)
    quantity_with_parts = line_item.quantity_by_variant.sum { |_variant, quantity| quantity }
    if line_item.inventory_units.count != quantity_with_parts
      line_item.errors[:inventory] << Spree.t(
        :inventory_not_available,
        item: line_item.variant.name
      )
    end
  end
end
