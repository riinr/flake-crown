{
  description = ''FastCGI library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fastcgi-master.flake = false;
  inputs.src-fastcgi-master.owner = "ba0f3";
  inputs.src-fastcgi-master.ref   = "refs/heads/master";
  inputs.src-fastcgi-master.repo  = "fastcgi.nim";
  inputs.src-fastcgi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fastcgi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fastcgi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}