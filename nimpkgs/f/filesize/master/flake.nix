{
  description = ''A Nim package to convert filesizes into other units, and turns filesizes into human readable strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-filesize-master.flake = false;
  inputs.src-filesize-master.owner = "sergiotapia";
  inputs.src-filesize-master.ref   = "refs/heads/master";
  inputs.src-filesize-master.repo  = "filesize";
  inputs.src-filesize-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-filesize-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-filesize-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}