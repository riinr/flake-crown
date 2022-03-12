{
  description = ''Bindings to libopusenc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opusenc-master.flake = false;
  inputs.src-opusenc-master.owner = "~ehmry";
  inputs.src-opusenc-master.ref   = "refs/heads/master";
  inputs.src-opusenc-master.repo  = "nim_opusenc";
  inputs.src-opusenc-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opusenc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opusenc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}