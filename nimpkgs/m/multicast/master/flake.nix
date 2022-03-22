{
  description = ''join and leave multicast groups / broadcast'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-multicast-master.flake = false;
  inputs.src-multicast-master.ref   = "refs/heads/master";
  inputs.src-multicast-master.owner = "enthus1ast";
  inputs.src-multicast-master.repo  = "nimMulticast";
  inputs.src-multicast-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-multicast-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-multicast-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}