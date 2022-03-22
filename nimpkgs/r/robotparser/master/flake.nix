{
  description = ''Determine if a useragent can access a particular URL using robots.txt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-robotparser-master.flake = false;
  inputs.src-robotparser-master.owner = "achesak";
  inputs.src-robotparser-master.ref   = "master";
  inputs.src-robotparser-master.repo  = "nim-robotparser";
  inputs.src-robotparser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-robotparser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-robotparser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}