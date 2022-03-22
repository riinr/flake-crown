{
  description = ''A static blog generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ipsumgenera-master.flake = false;
  inputs.src-ipsumgenera-master.ref   = "refs/heads/master";
  inputs.src-ipsumgenera-master.owner = "dom96";
  inputs.src-ipsumgenera-master.repo  = "ipsumgenera";
  inputs.src-ipsumgenera-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ipsumgenera-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ipsumgenera-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}