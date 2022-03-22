{
  description = ''C alsa-lib bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alsa-master.flake = false;
  inputs.src-alsa-master.ref   = "refs/heads/master";
  inputs.src-alsa-master.owner = "eagledot";
  inputs.src-alsa-master.repo  = "nim-alsa";
  inputs.src-alsa-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alsa-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-alsa-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}