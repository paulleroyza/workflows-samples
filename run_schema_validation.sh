#/bin/bash

# # Old
# SCHEMA=workflows
# echo $SCHEMA
# ajv compile -c ajv-formats -s jsonschema/$SCHEMA.json

# for src in $(find test-cases -type f); do
#     ajv validate -c ajv-formats \
#         -s jsonschema/$SCHEMA.json \
#         -d $src
# done

# # New
# SCHEMA=schema1
# echo $SCHEMA
# ajv compile -c ajv-formats -s jsonschema/$SCHEMA.json

# for src in $(find test-cases -type f); do
#     ajv validate -c ajv-formats \
#         -s jsonschema/$SCHEMA.json \
#         -d $src
# done

# Newest
# SCHEMA=schema2
# echo $SCHEMA
# ajv compile -c ajv-formats --spec=draft2019 -s jsonschema/$SCHEMA.json

# for src in $(find test-cases -type f); do
#     ajv validate -c ajv-formats --spec=draft2019 \
#         -s jsonschema/$SCHEMA.json \
#         -d $src
# done

SCHEMA=schema3
echo $SCHEMA
ajv compile -c ajv-formats --spec=draft2019 -s jsonschema/$SCHEMA.json

for src in $(find src -type f); do
    echo "ajv validate -c ajv-formats --spec=draft2019 -s jsonschema/$SCHEMA.json -d $src"
    ajv validate -c ajv-formats --spec=draft2019 \
        -s jsonschema/$SCHEMA.json \
        -d $src
done