find . -type f --not -path '*/\.git/*' exec sed -i -e 's/defenition/definition/g' {} \;
