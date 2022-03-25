{
  description = ''Nim Library for Azure Cognitive Services Translate'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-azure_translate-v0_3_0.flake = false;
  inputs.src-azure_translate-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-azure_translate-v0_3_0.owner = "williamhatcher";
  inputs.src-azure_translate-v0_3_0.repo  = "azure_translate";
  inputs.src-azure_translate-v0_3_0.type  = "github";
  
  inputs."nuuid".owner = "nim-nix-pkgs";
  inputs."nuuid".ref   = "master";
  inputs."nuuid".repo  = "nuuid";
  inputs."nuuid".dir   = "master";
  inputs."nuuid".type  = "github";
  inputs."nuuid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuuid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-azure_translate-v0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-azure_translate-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}