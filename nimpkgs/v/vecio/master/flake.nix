{
  description = ''vectored io for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vecio-master.flake = false;
  inputs.src-vecio-master.ref   = "refs/heads/master";
  inputs.src-vecio-master.owner = "emekoi";
  inputs.src-vecio-master.repo  = "vecio.nim";
  inputs.src-vecio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vecio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vecio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}