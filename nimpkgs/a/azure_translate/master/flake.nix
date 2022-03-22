{
  description = ''Nim Library for Azure Cognitive Services Translate'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-azure_translate-master.flake = false;
  inputs.src-azure_translate-master.owner = "williamhatcher";
  inputs.src-azure_translate-master.ref   = "master";
  inputs.src-azure_translate-master.repo  = "azure_translate";
  inputs.src-azure_translate-master.type  = "github";
  
  inputs."nuuid".owner = "nim-nix-pkgs";
  inputs."nuuid".ref   = "master";
  inputs."nuuid".repo  = "nuuid";
  inputs."nuuid".dir   = "";
  inputs."nuuid".type  = "github";
  inputs."nuuid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuuid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-azure_translate-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-azure_translate-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}