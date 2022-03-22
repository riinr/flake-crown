{
  description = ''Obsolete - please use gles instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-gles-master.flake = false;
  inputs.src-io-gles-master.ref   = "refs/heads/master";
  inputs.src-io-gles-master.owner = "nimious";
  inputs.src-io-gles-master.repo  = "io-gles";
  inputs.src-io-gles-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-gles-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-gles-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}