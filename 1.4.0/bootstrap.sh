#!/bin/bash
echo ""
echo ""
echo "###############################################################################################"
echo "# Welcome to your Apache Drill v1.4.0 (Embedded mode) Docker image                            #"
echo "#                                                                                             #"
echo "# Quick start query:                                                                          #"
echo "# SELECT * FROM cp.\`employee.json\` LIMIT 5;                                                   #"
echo "#                                                                                             #"
echo "# More examples can be found at:                                                              #"
echo "# https://drill.apache.org/docs/querying-a-file-system-introduction/                          #"
echo "#                                                                                             #"
echo "# To exit:                                                                                    #"
echo "# !quit                                                                                       #"
echo "###############################################################################################"
echo ""
echo ""
echo "Starting Apache Drill v1.4.0 in embeded mode..."
echo ""
echo ""

#
# Start Apache Drill in embedded mode
# https://drill.apache.org/docs/starting-drill-on-linux-and-mac-os-x/
#
/opt/drill/apache-drill-1.4.0/bin/drill-embedded