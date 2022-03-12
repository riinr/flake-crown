{
  description = ''Nim bindings for Godot Engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-godot-v0_8_3.flake = false;
  inputs.src-godot-v0_8_3.owner = "pragmagic";
  inputs.src-godot-v0_8_3.ref   = "refs/tags/v0.8.3";
  inputs.src-godot-v0_8_3.repo  = "godot-nim";
  inputs.src-godot-v0_8_3.type  = "github";
  
  inputs."compiler".dir   = "nimpkgs/c/compiler";
  inputs."compiler".owner = "riinr";
  inputs."compiler".ref   = "flake-pinning";
  inputs."compiler".repo  = "flake-nimble";
  inputs."compiler".type  = "github";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-godot-v0_8_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-godot-v0_8_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}