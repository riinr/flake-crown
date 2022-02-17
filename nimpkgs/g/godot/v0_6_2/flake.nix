{
  description = ''Nim bindings for Godot Engine'';
  inputs.src-godot-v0_6_2.flake = false;
  inputs.src-godot-v0_6_2.type = "github";
  inputs.src-godot-v0_6_2.owner = "pragmagic";
  inputs.src-godot-v0_6_2.repo = "godot-nim";
  inputs.src-godot-v0_6_2.ref = "refs/tags/v0.6.2";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-godot-v0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-godot-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-godot-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}