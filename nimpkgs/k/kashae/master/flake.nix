{
  description = ''Procedure caching library, aimed to replicate other language procedure caching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kashae-master.flake = false;
  inputs.src-kashae-master.owner = "beef331";
  inputs.src-kashae-master.ref   = "master";
  inputs.src-kashae-master.repo  = "kashae";
  inputs.src-kashae-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kashae-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kashae-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}