{
  description = ''Native MQTT client library'';
  inputs.src-nmqtt-v1_0_2.flake = false;
  inputs.src-nmqtt-v1_0_2.type = "github";
  inputs.src-nmqtt-v1_0_2.owner = "zevv";
  inputs.src-nmqtt-v1_0_2.repo = "nmqtt";
  inputs.src-nmqtt-v1_0_2.ref = "refs/tags/v1.0.2";
  
  
  inputs."bcrypt".url = "path:../../../b/bcrypt";
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-nmqtt-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmqtt-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmqtt-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}