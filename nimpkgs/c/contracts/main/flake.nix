{
  description = ''Design by contract (DbC) library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-contracts-main.flake = false;
  inputs.src-contracts-main.ref   = "refs/heads/main";
  inputs.src-contracts-main.owner = "Udiknedormin";
  inputs.src-contracts-main.repo  = "NimContracts";
  inputs.src-contracts-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-contracts-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-contracts-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}