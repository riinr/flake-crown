{
  description = ''Wrapper for the zip library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zip-master.flake = false;
  inputs.src-zip-master.ref   = "refs/heads/master";
  inputs.src-zip-master.owner = "nim-lang";
  inputs.src-zip-master.repo  = "zip";
  inputs.src-zip-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}