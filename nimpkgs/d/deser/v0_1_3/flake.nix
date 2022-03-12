{
  description = ''De/serialization library for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-deser-v0_1_3.flake = false;
  inputs.src-deser-v0_1_3.owner = "gabbhack";
  inputs.src-deser-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-deser-v0_1_3.repo  = "deser";
  inputs.src-deser-v0_1_3.type  = "github";
  
  inputs."https://github.com/gabbhack/anycase-fork".owner = "nim-nix-pkgs";
  inputs."https://github.com/gabbhack/anycase-fork".ref   = "master";
  inputs."https://github.com/gabbhack/anycase-fork".repo  = "https://github.com/gabbhack/anycase-fork";
  inputs."https://github.com/gabbhack/anycase-fork".type  = "github";
  inputs."https://github.com/gabbhack/anycase-fork".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/gabbhack/anycase-fork".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-deser-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}