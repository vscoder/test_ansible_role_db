install_ansible_venv:
	test -d ./.venv || python3 -m venv ./.venv
	./.venv/bin/pip install -r requirements.txt

install_ansible_virtualenv:
	test -d ./.venv || virtualenv ./.venv
	./.venv/bin/pip install -r requirements.txt

molecule_static_analyse:
	./.venv/bin/molecule lint
	./.venv/bin/molecule syntax

molecule_create:
	./.venv/bin/molecule create
	./.venv/bin/molecule list

molecule_verify:
	./.venv/bin/molecule converge
	./.venv/bin/molecule verify

molecule_test:
	./.venv/bin/molecule test

molecule_destroy:
	./.venv/bin/molecule destroy -f
