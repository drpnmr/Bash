!/bin/bash

planet_name="${1,,}"

case "$planet_name" in
        "mercury")
                echo "0"
                ;;
        "venus")
                echo "0"
                ;;
        "earth")
                echo "1"
                ;;
        "mars")
                echo "2"
                ;;
        "jupiter")
                echo "98"
                ;;
        "saturn")
                echo "83"
                ;;
        "uranus")
                echo "27"
                ;;
        "neptune")
                echo "14"
                ;;
        *)
                echo "Unknown planet"
                ;;
esac
