{
  description = ''pure Ini configurations parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-configparser-master.flake = false;
  inputs.src-configparser-master.ref   = "refs/heads/master";
  inputs.src-configparser-master.owner = "xmonader";
  inputs.src-configparser-master.repo  = "nim-configparser";
  inputs.src-configparser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-configparser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-configparser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}