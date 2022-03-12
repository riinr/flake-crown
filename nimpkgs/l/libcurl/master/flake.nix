{
  description = ''Nim wrapper for libcurl.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libcurl-master.flake = false;
  inputs.src-libcurl-master.owner = "Araq";
  inputs.src-libcurl-master.ref   = "refs/heads/master";
  inputs.src-libcurl-master.repo  = "libcurl";
  inputs.src-libcurl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libcurl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libcurl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}