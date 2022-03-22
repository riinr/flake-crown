{
  description = ''c2nim helper to simplify and automate the wrapping of C libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgen-v0_1_4.flake = false;
  inputs.src-nimgen-v0_1_4.owner = "genotrance";
  inputs.src-nimgen-v0_1_4.ref   = "v0_1_4";
  inputs.src-nimgen-v0_1_4.repo  = "nimgen";
  inputs.src-nimgen-v0_1_4.type  = "github";
  
  inputs."c2nim".owner = "nim-nix-pkgs";
  inputs."c2nim".ref   = "master";
  inputs."c2nim".repo  = "c2nim";
  inputs."c2nim".dir   = "0_9_18";
  inputs."c2nim".type  = "github";
  inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgen-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgen-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}