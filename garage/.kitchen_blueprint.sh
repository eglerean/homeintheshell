#!/bin/bash

# Clean up and start fresh
rm -rf kitchen
mkdir kitchen
cd kitchen

# Create kitchen sections
mkdir fridge freezer cabinet drawer

# --- Fridge ---
cat > fridge/mozzarella.json <<EOF
{
  "name": "Mozzarella",
  "type": "cheese",
  "expiry_date": "2025-05-10",
  "quantity": "200g",
  "fresh": true
}
EOF

cat > fridge/salad.json <<EOF
{
  "name": "Salad",
  "type": "vegetable",
  "expiry_date": "2023-12-01",
  "fresh": false
}
EOF

# --- Freezer ---
cat > freezer/pizza_base.json <<EOF
{
  "name": "Pizza Base",
  "type": "dough",
  "expiry_date": "2025-07-01",
  "ready_to_use": true
}
EOF

cat > freezer/.chocolate_ice_cream.json <<EOF
{
  "name": "Chocolate Ice Cream",
  "type": "dessert",
  "expiry_date": "2023-08-10"
}
EOF

cat > freezer/.vanilla_ice_cream.json <<EOF
{
  "name": "Vanilla Ice Cream",
  "type": "dessert",
  "expiry_date": "2023-09-15"
}
EOF

cat > freezer/.lemon_ice_cream.json <<EOF
{
  "name": "Lemon Ice Cream",
  "type": "dessert",
  "expiry_date": "2025-12-01"
}
EOF

# --- Cabinet ---
cat > cabinet/pizza_sauce.json <<EOF
{
  "name": "Pizza Sauce",
  "type": "sauce",
  "expiry_date": "2025-09-01",
  "packaging": "tin can"
}
EOF

cat > cabinet/tomato.json <<EOF
{
  "name": "Tomato",
  "type": "vegetable",
  "expiry_date": "2024-01-01"
}
EOF

cat > cabinet/spaghetti.json <<EOF
{
  "name": "Spaghetti",
  "type": "pasta",
  "expiry_date": "2024-06-01"
}
EOF

cat > cabinet/parmesan.json <<EOF
{
  "name": "Parmesan Cheese",
  "type": "cheese",
  "expiry_date": "2023-12-01"
}
EOF

cat > cabinet/pasta_sauce.json <<EOF
{
  "name": "Ready-made Pasta Sauce",
  "type": "sauce",
  "expiry_date": "2024-03-15",
  "packaging": "glass jar"
}
EOF

# --- Drawer ---
echo "A pack of paper napkins for the table." > drawer/napkins.txt

cat > drawer/.oregano.json <<EOF
{
  "name": "Oregano",
  "type": "spice",
  "expiry_date": "2026-01-01"
}
EOF

cat > drawer/.chili_flakes.json <<EOF
{
  "name": "Chili Flakes",
  "type": "spice",
  "expiry_date": "2025-11-01"
}
EOF

cat > drawer/.pepper.json <<EOF
{
  "name": "Black Pepper",
  "type": "spice",
  "expiry_date": "2026-03-01"
}
EOF

cat > drawer/.salt.json <<EOF
{
  "name": "Salt",
  "type": "spice",
  "expiry_date": "2030-01-01"
}
EOF

# --- Password-protected ZIP for Sriracha Sauce ---
cat > sriracha.json <<EOF
{
  "name": "Sriracha Sauce",
  "type": "hot sauce",
  "expiry_date": "2026-02-01",
  "spicy_level": "high"
}
EOF

zip -P kitchen2025 drawer/gia_vị_bí_truyền.zip sriracha.json > /dev/null
rm sriracha.json

# --- README.md ---
cat > README.md <<EOF
# 🍽️ Welcome to the Terminal Kitchen!

You've entered a digital kitchen full of ingredients...
Which ingredients are still fresh? What can you cook with it?

Note! There's an ingredient that is myserious, almost (en)cryptic! If you want to check what it is you can use the command \`unzip -l [filename]\`.
To uncover the secret use `unzip [filename]` with password "kitchen2025"
EOF

cd ..
