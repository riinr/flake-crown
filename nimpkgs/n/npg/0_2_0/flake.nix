{
  description = ''Password generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-npg-0_2_0.flake = false;
  inputs.src-npg-0_2_0.owner = "rustomax";
  inputs.src-npg-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-npg-0_2_0.repo  = "npg";
  inputs.src-npg-0_2_0.type  = "github";
  
  inputs."passgen".owner = "nim-nix-pkgs";
  inputs."passgen".ref   = "master";
  inputs."passgen".repo  = "passgen";
  inputs."passgen".type  = "github";
  inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-npg-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-npg-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}