{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hastysite-v1_3_6.flake = false;
  inputs.src-hastysite-v1_3_6.owner = "h3rald";
  inputs.src-hastysite-v1_3_6.ref   = "v1_3_6";
  inputs.src-hastysite-v1_3_6.repo  = "hastysite";
  inputs.src-hastysite-v1_3_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hastysite-v1_3_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hastysite-v1_3_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}