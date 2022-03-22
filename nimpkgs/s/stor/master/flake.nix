{
  description = ''Super efficient object storage system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stor-master.flake = false;
  inputs.src-stor-master.ref   = "refs/heads/master";
  inputs.src-stor-master.owner = "nimscale";
  inputs.src-stor-master.repo  = "stor";
  inputs.src-stor-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stor-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}