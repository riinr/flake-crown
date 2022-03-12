{
  description = ''Flexible JSON manshal/unmarshal library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jdec-develop.flake = false;
  inputs.src-jdec-develop.owner = "diegogub";
  inputs.src-jdec-develop.ref   = "refs/heads/develop";
  inputs.src-jdec-develop.repo  = "jdec";
  inputs.src-jdec-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jdec-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jdec-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}