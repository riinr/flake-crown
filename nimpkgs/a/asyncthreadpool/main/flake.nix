{
  description = ''Awaitable threadpool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncthreadpool-main.flake = false;
  inputs.src-asyncthreadpool-main.ref   = "refs/heads/main";
  inputs.src-asyncthreadpool-main.owner = "yglukhov";
  inputs.src-asyncthreadpool-main.repo  = "asyncthreadpool";
  inputs.src-asyncthreadpool-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncthreadpool-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncthreadpool-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}