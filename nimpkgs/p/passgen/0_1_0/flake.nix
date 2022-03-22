{
  description = ''Password generation library in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-passgen-0_1_0.flake = false;
  inputs.src-passgen-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-passgen-0_1_0.owner = "rustomax";
  inputs.src-passgen-0_1_0.repo  = "nim-passgen";
  inputs.src-passgen-0_1_0.type  = "github";
  
  inputs."urand".owner = "nim-nix-pkgs";
  inputs."urand".ref   = "master";
  inputs."urand".repo  = "urand";
  inputs."urand".dir   = "";
  inputs."urand".type  = "github";
  inputs."urand".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urand".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-passgen-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-passgen-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}