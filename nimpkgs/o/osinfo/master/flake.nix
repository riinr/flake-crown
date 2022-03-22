{
  description = ''Modules providing information about the OS.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-osinfo-master.flake = false;
  inputs.src-osinfo-master.ref   = "refs/heads/master";
  inputs.src-osinfo-master.owner = "nim-lang";
  inputs.src-osinfo-master.repo  = "osinfo";
  inputs.src-osinfo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-osinfo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-osinfo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}