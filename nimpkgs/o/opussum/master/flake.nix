{
  description = ''Wrapper around libopus'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opussum-master.flake = false;
  inputs.src-opussum-master.ref   = "refs/heads/master";
  inputs.src-opussum-master.owner = "ire4ever1190";
  inputs.src-opussum-master.repo  = "opussum";
  inputs.src-opussum-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opussum-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opussum-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}