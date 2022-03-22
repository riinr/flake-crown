{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfblast-v0_1_0.flake = false;
  inputs.src-zfblast-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-zfblast-v0_1_0.owner = "zendbit";
  inputs.src-zfblast-v0_1_0.repo  = "nim.zfblast";
  inputs.src-zfblast-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfblast-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfblast-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}