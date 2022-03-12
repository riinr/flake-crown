{
  description = ''base64 cui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base64_decoder-master.flake = false;
  inputs.src-base64_decoder-master.owner = "momeemt";
  inputs.src-base64_decoder-master.ref   = "refs/heads/master";
  inputs.src-base64_decoder-master.repo  = "base64_cui";
  inputs.src-base64_decoder-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base64_decoder-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base64_decoder-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}