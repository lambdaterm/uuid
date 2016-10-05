UUID v4 generator in pure Erlang
--------------------------------

Installing instructions:
```bash
git clone https://github.com/ymn/uuid.git
cd uuid
rebar compile eunit
```
Usage:
```erlang
1> [uuid:generate() || Items <- lists:seq(1, 10)].
[<<"71b8f17f-4f98-49aa-b998-2435b1288e36">>,
 <<"746b018f-7966-4e0e-93fc-542e3308e2d5">>,
 <<"d35340ce-0406-4c0d-bb8f-9b63aadfe3ca">>,
 <<"944bb766-ca12-4498-aca4-12449900efd0">>,
 <<"a3697505-9cee-4ef5-aedc-4350c1943418">>,
 <<"222a3cea-c455-4573-8595-f3ec50fb5498">>,
 <<"6a031d92-5506-4b97-a89d-b6d5c0eff132">>,
 <<"0dcb8850-8a65-4d9d-8a8c-106059dc50e1">>,
 <<"549138c5-e8cb-4353-8246-df33e81cadd4">>,
 <<"a2d218dd-bc2c-4385-9823-e355a2a9938b">>]
```
