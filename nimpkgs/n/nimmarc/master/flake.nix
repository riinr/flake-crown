{
  description = ''Marc21 parser for Nimlang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimMarc-master.flake = false;
  inputs.src-NimMarc-master.owner = "rsirres";
  inputs.src-NimMarc-master.ref   = "refs/heads/master";
  inputs.src-NimMarc-master.repo  = "NimMarc";
  inputs.src-NimMarc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimMarc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimMarc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}