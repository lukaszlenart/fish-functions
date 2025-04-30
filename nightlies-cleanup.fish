function nightlies-cleanup
    # Base URL
    set BASE_URL "https://nightlies.apache.org/struts/snapshot/"

    # Prompt for password
    read -s -P "Enter the password for user 'lukaszlenart': " PASSWORD

    # Prompt for prefix
    read -P "Enter the prefix to filter ZIP files (e.g., 'struts-6.4.0'): " PREFIX

    # Step 1: Fetch the webpage content
    echo "Fetching the list of ZIP files from $BASE_URL..."
    set webpage_content (curl -s $BASE_URL)

    # Step 2: Extract all .zip file URLs and filter by prefix
    set zip_files (echo $webpage_content | grep -oE 'href="[^"]+\.zip"' | sed -E 's/href="([^"]+)"/\1/' | awk -v base=$BASE_URL '{print base $1}' | grep "^$BASE_URL$PREFIX")

    # Check if there are any ZIP files matching the prefix
    if test (count $zip_files) -eq 0
        echo "No ZIP files found with prefix '$PREFIX' at $BASE_URL."
        return 1
    end

    echo "Found ZIP files matching prefix '$PREFIX':"
    for zip_file in $zip_files
        echo "  - $zip_file"
    end

    # Step 3: Delete each ZIP file using curl
    for zip_file in $zip_files
        echo "Deleting $zip_file..."
        curl -u lukaszlenart:$PASSWORD -X DELETE $zip_file
        if test $status -eq 0
            echo "Successfully deleted: $zip_file"
        else
            echo "Failed to delete: $zip_file"
        end
    end
end
